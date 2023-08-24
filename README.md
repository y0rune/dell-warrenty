# dell-warrenty

## How to use

```sh
./dell-warrenty.sh CLIENT-ID CLIENT-SECRET SERIAL-NUMBER-DEVICE
```

## Example of usage

```
yorune@PL-LAP-B9C1MN3 ~/git/dell main $ ./dell-warrenty.sh XXXXXXXXXXXXXXXX YYYYYYYYYYYY ZZZZZZZ  | jq .  | head -n10
{
  "id": XXXXXXXXX,
  "serviceTag": "XXXXXX",
  "orderBuid": 3131,
  "shipDate": "2022-04-06T23:00:00Z",
  "productCode": "XXXX",
  "localChannel": "GCPR",
  "productId": null,
  "productLineDescription": "LATITUDE 5421",
  "productFamily": null,
```
