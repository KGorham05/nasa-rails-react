export const apodData = async () => {
  const url = "/api/v1/pictures/index";
  const response = await fetch(url);
  if (response.ok) {
    return response.json();
  }
  throw new Error("Network response was not ok.");
};
