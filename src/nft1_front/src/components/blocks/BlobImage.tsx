export default function BlobImage({
  image,
  alt
}: {
  image: Blob;
  alt: string;
}) {
  const thumbUrl = URL.createObjectURL(image);

  return (
    <img src={thumbUrl} alt={alt} className="object-cover w-full h-full" />
  );
}
