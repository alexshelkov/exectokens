export const createPromise = <T>(timeout = 60000): CreatePromise<T> => {
  let promiseResolve: (data: T) => void = () => {},
    promiseReject: (err: unknown) => void = () => {};

  let settled = false;

  const promise = new Promise<T>((resolve, reject) => {
    promiseResolve = (data) => {
      settled = true;
      resolve(data);
    };
    promiseReject = (err) => {
      settled = true;
      reject(err);
    };
  });

  setTimeout(() => {
    if (!settled) {
      promiseReject(new Error('Timed out'));
    }
  }, timeout);

  return [promise, promiseResolve, promiseReject] as const;
};

export type CreatePromise<T> = [
  Promise<T>,
  (data: T) => void,
  (err: unknown) => void
];
