-- Fix the sequence
SELECT setval('mobility_services_mobilityservice_id_seq', max(micromobilityservice_id)) FROM micromobility_services;

-- For SF

-- Add the corresponding micromobility_type to micromobility_services 
-- Lime and Spin scooters and Lyft bikes
INSERT INTO micromobility_services (micromobilitytype_id) values (4), (12), (13);


-- For PDX 
INSERT INTO micromobility_type (micromobility_typename, vehicle_image) 
values ('escooter', 'iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAACEZVhJZk1NACoAAAAIAAUBEgADAAAAAQABAAABGgAFAAAAAQAAAEoBGwAFAAAAAQAAAFIBKAADAAAAAQACAACHaQAEAAAAAQAAAFoAAAAAAAAASAAAAAEAAABIAAAAAQADoAEAAwAAAAEAAQAAoAIABAAAAAEAAAhboAMABAAAAAEAAAhbAAAAAPuCKCYAAAFZaVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJYTVAgQ29yZSA1LjQuMCI+CiAgIDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+CiAgICAgIDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiCiAgICAgICAgICAgIHhtbG5zOnRpZmY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vdGlmZi8xLjAvIj4KICAgICAgICAgPHRpZmY6T3JpZW50YXRpb24+MTwvdGlmZjpPcmllbnRhdGlvbj4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+CkzCJ1kAAA7mSURBVHhe7VwLdFTlnf/NezKZzGQmmZAXScCEhGcgPLaEFJVVQQ+CUrfdUtgt7C6l6mFb2D1WurKu1ZZT19LVXftQwJaDDVRdthYJilSiEh4LKSAKIYSQBwl5zzOZx527//83F8vxUDNmEg6ZnR/nch/fd7/73d/3+z++O/dGJROQwJChVtYJDBEJAmNEgsAYkSAwRiQIjBEJAmNEgsAYkSAwRtwUApc9uAT33L1AbB8/fgzn685DkiSxP9px02YiC+74ElweCT093ejo6IJOp0FJSQnKy8uhUqnQ092Nbdu3K7VHD26KAnt6e6HV6mA2m6BS6zF2jAoB/wA0Gg1qa0+iuroah6oPKbVHF24Kgfn5E+AeSEFhnhazSnpgd+TDYrUjOTkZSUkmeDweTJ06Tak9ujDiBF661IgNf5eNx1fWY5z9FDJTnchLb4ZaYyDivPCTEq9cuYJZs2YpZ4wujDiBDqsbXudFbN9Xime3efGVNe8gNb0EKdpL6Orxwu0JwOl0YubMmcoZowwcRG4G7l+6XM7JzlT2ZHnjutlyjg3y1HGQb58CubuzXSkZXbgpUbi66t/x8bGfYtmdAbgMq1E4Z7M4frmpjQcQqalpSLUaxLHRhhEnkBvf81MDZpflo7enB47pO5BZcG+kMA4w4j5wX1U1yqakIhBUQ4UgjNZSpSQ+MOIEXqn/HWRVMs5eCME/4EeqLVspiQ+MOIFN5/fAaNRj2iQDrDkVytH4wYgS2HC5G9m2LvKDOgR8XoQwXimJH4wogTt3VmJBeQbCYYpWKgn6lOlKSfxgRAk89uEe5GSaxcMCrVqCbJyslMQPRpTArpYaaDQqQWB3nw/2MWVKSfxgxAh8q+oP+NJ0G0JSGGoV0HpVhs2WopTGD0aMwF2Vv0XFLBsCAUql5RBC2klKSXxhxAh89Te/wdwZqQiT+sIqGQbLVKUkvjAiBF7t6ILV2IekJB3CIRXqL3ZhzNjR+bhqMIwIga++WomK2WPI/wUpgGjQ2u7GmNxR+rhqEIwIgbsqd2H2tAzxsDQYktHeMYDMsQkCo8bRox/g60szIYUCaG5zQa1LgU6rFMYZhp3A9977g1iPn2hG/vjbcLm5Fxk58en/GMNO4K5duzFtggUw6iFLEv5y/mSY02YopfGHYSeQA8iX5zioZQPO/PEMkoxGLL7DppTGH4aVwM7ODrhcffjy7DSgP4ggNKh66xjgP4oLNeuVWvGFYSVwN5kvgxNoDAQxLj8fy1bcK9T4wQdHRFm8YVgJrKzcCXOyCXnjaM4bpLmv1YIrjU5SoIzkrPuUWvGFYSVwz+YjKJtM5svT3zBwuKYWF1osOPXRecyp+LpSK74wbAT+fu9B7DkITC4i9RF5/BC1fG4ZivMD+LjBj4KC25Sa8YVhI/B3eyqRZFJhUpEVJ2ubUN9QB4+XZiBZIahS5iu14g/D97twvRoPb0rC3yyrIPNtQ3fnRwgFZLT22nH/359AXl6BUjG+MCwKdPY04t33ZJxrNFHg0KOlLQinS4Y27SE88lR33JLHGBYCreqd2PrfKmi15P9UMjq6Xehzkz+cvUKpEb8YFgJXPfwWHrhbh8mFJgSDYSRpA9DrgMz8O5Qa8YthIfCe0sM4XWdEaYkRgaCKROiHyZxOQcUK1+UtaPrk10rN+EPMBF5tfAsllKE88zMNyiYZKJH2wen2wOGwoWF/Ev5373rY8+PXlGMm0BzaiYe+m4SJhVqoVSq0d6ggq3XQhi6gtrEU2Xeegtk0LEK/JRHznb322mvY9IgWhfl6hCSg1+lBU0sAxfc24yvfOoKSiaPz3edoEROB0kAD7i0P4NhHGkwt0iEQihCoNwA5OblKrfhGTARu/9UeWCzA/xxUUwDRwR9Qw+12wj6mUKkR/4iRwDdgL7fA6VFhfK4WjrQgBgbcMKXGt9lej5gIPFzzofjtNzeDzDmsxtXOJLR3epGTF7+P8D+LIRMYCAQiGzJFDmMx1Oo+mIwukUjnZesjZf8PMGQCz507J9bWVCuyM+2o/qMDBl0jnv1+FpprH0O/zynKowV/rVRbW4tdu3Zh48aN2LZtm1Jya2PIT2N2796N5cv/GuVz50GnN8Ji1mDLP55AwcR0tNW3ovpEGF/7jkepHYGzrxcXGxrQQMvFi7TU1+Pc+fO4cKEOIcqBIl2RaQ3xHV1WVibefPP3yMvLizRwC2LIBP7bk09i+yvbkZubC6PRCL9kxfYnPkHh9CC1qkb90Qs403o73jg0gYg6jaamZnEeX02WwwiHmSgZlHsTWVrxDiGT19vbh+RkE1JTbeQW1GhuasLyb3wDL730kjj/VsOQCVy9ahUFkRqkpJih1+uJAD1KxgVQmHUFF5oooHSFUXdpgCI0oNXyJw4qBENB8pFB2tdS8EkSZDKYPP5+uKurC++++y7mzZuHdevWYe/evdR+ijj+2GOPId2RjrAUjpxEiJD+JyhjoGzcGJ89xx8MYfntFdAN8ZHbkAksL5+L06dPw2aziU7piBSNNgkDfgoqpDCdLgyPTyWU1t/vhlbtJ2IqsHTpUpw9exZbt74svtQ0m82C1IyMDJw8eZLySDd27NiBffv2oa6uTqgw4Pejs6uTyLQS0SFFwREV85pv4fqFWbzRXV1PHm/zIvh2uXCpqwP2NEek8AsgpifSK1eswNvvvC0+W2WlMBF8Q4FAGLflBjF9gguOVBfK71iBisWviHPuvusuHCCV5ebmCCWy8tLS0rF69Wq8/PLLaGlpEW1lZ0e+J2m4WI+rHZ2YNWsm3F4VfP0B4S+Nekmc6/ZG1kYDuQOE4fKEYdDL8A3wPoHujuiEzcKEMXF8kO2BVxESe/o8eOVnG7DknnFwOa/CYi+GMX0x1xgUX5hA7iybFn+i+v777+PIkRpBhFqtIfOKBAJuMCSp8NTaVozNHEBfXxiX+/8W3/ner8i3WWFJsSBM9bjzRqNB+MBQKCTUzIvBYEArEcmqa2luQcG4AiSbs/DUt324b54kyFn/nETKlvDsBlD0l/Hw00G0kdt45Qdq/Hx3CGu/qkJ7lyyeS2bYgbKvhohYlXjd+BpxDF7z16IH9r+Ovyi/Rxxz912Ct3UrbPmrYTB//qcZX4jAf920CS/85wvCPDRkWtNKS0kRPvg8XlxpuyJ8oYaI1Gg1RKgWTq8R313ehorpTmx9w4iqmjRSCpscBw61UK7ZnKJ8eG2kwSEFkTm1t7cTOf0UtXtEvbKZc9Da3o89z/mx6BFg5zNBvF0j46G7wli3OYT8bAnfekiF/6oM4Z+/qcbCtX4kkSJ3/EiDAzVhurZE00yZ2voTaZGFtukf98cf6Ic9RcIvX9qGuxZ9TdSLBlHngQsWLMDzLzB5skiiiyYU0czDRe5OBZfbJUyFj3t9XniJUH7FQw62YfNWPVZuTMOb76cKM2O1RYKIidKUbOEDdTodqbRPRPPFixejo6OD8kg3JAo6xSWTyK8GkZ8VxtXuMLIdMg2ODG9/GFUfSvjwhIS6y7Iom1ECvH04hJ5uGcUUE9QqGS9WBskXh+gc/qmVBk/xmRHfyZZCLiAsEZladPRpcf8DK7D5mU3KXQ+OqAh8klKWU6dOied9Xq8XFRQlTWYHVizyIGcMHfMNQEskcNmM6TPQ1d0tRlZNI27UBelmJWhUA/ARuR6PW6jLRWbTRCkK30VbWxuayVSPHTuGH/3wh8KEff1+2NMzhEL9/jBmTZSRnirjybWsJuDEJzLuq1Dhx/+kxgvfU+Mnv5Ywt1QFB5nrX92nxtI71dhbHYbPrwYZhADrjzj7FOw2eDBZ5TLNqCwpydAbTHj8X35Arim6V1GiMmGr1UoX0Ygg8ZPnnsM/rFmD2ybMwMUqGdm3k+9p+Vgkvf2+fjzw4INYsmQJli1bBjv5M3Y6iuGI/yOjL4nOc3s6rQ6FRUXCJfhJwX6KuI2Nl4Q6OJ3hOhzZS4vIR5opDaIAcuCohD5XCEV5EiaND+Mg7Xu8pEAimRXWST43wybj+FkOaJFcU4SS6+6UTZhdh59GQ0sMsxXwXxRJIf/Ms6Li4mIcP35cqf3nMSiBHDA4QnI6wb7p8OHDeHzjJmRb6jFnWjK+v6WdfFW76MBYSqqbyflzkzwtKyuLfFjDA8CpBwcgmVIPgQifYp/JzKQBsNnsYooYJCLH0uyDz+NzRGSnOXYoFElfNGrOBWXx+jAf05BJX9vna3NywikOjblQ1/Xg802mJOqvXgwk7/O9hWigApQTDgyQNZEqOzs7RVuDYVACX3zxRTzxxBPCrNhPORwOlFLwOHiwGgHqcNBPfpCaSE9PF8kxpyHcCa7P+MUvfo61a78tVMDlDKHJiCyEEnhTImVZU1OFK9DynRNY9de6x68IM1H8zk2IyJEk+VPTlEQ+GNnn6uQl6fpMEMid9FLdkEjA2d9xoOO80kypEl/7Wvt8Ld7nvvN2T0+PEMHkyZ//edqgBHJSu379ejFSixYtxLRppXj99dfJzBopUDiFCXATfNOsGj7+2SZbW1sxf/58MQe+2WB1cX94MZlMwmzZV7O6WfkRBfIg0mxJGUwmvru7S1hDYeHnPxwelEBuZO7cuSJC8oX5SUlVVRUOHYr8oZxHH30UCxcuxDLyfTlkwvySJf85kxvh6NGjQsUcZXnWwSPNplJO7etIGTfqSrTHruFaGbuU/fv3CyUxcTwDYldkt9uFnw0E/MKMmVAOatwXPaufFnYb3MdBqImAKg2KKVOmyGS6cmZmppyWZpe3bNkijpPPkydPmiSTacoFBQV8Nfnpp58WZbciKDBQ/9NkcjdiIWJlmvWIhY/zPRDBYn/lypXKWZ+PqKJw3fnzmDhxIrJoesW5nnC67PgzM4XP41H0+XxiJuKkRPhWBSfpbLr8BIl9HYOVyvfDC1sYr/nhRRS0CESVB06gkP7OgQPCl7G8hdzJ5Ng8eM3TOvYftzJ5DIvFgjNnzohB51Tl2lycTZr3eWHyONuIGqzAaEG+Ql616puyTqcV5spLXl6e/Pzz/6HUGD1Ys2aNTIHv0/tISTHLGzZsUEqjR1QmnMCfR9Rz4QRujASBMSJBYIxIEBgjEgTGiASBMQH4P+Xs3oNcDRAuAAAAAElFTkSuQmCC');

-- Correct the typename 
UPDATE micromobility_type SET micromobility_typename = 'ebike' where micromobilitytype_id = 13;