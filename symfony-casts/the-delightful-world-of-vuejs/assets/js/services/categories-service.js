/**
 * @returns {Promise}
 */
export function fetchCategories() {
  return new Promise((resolve) => {
    resolve({
      data: {
        'hydra:member': window.categories,
      },
    });
  });
}
