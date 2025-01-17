# Computing rescale baselines for English models
### Downloading the dataset
This downloads the WMT17 English text data.
```sh
bash download_text_data.sh
```

For languages not in WMT17, you can use data from [paracrawl](https://paracrawl.eu).
```sh
bash download_paracrawl_data.sh <lang>
```

### Tuning the models
Here is an example of getting the rescale baseline files of two models
```sh
python get_rescale_baseline.py --lang en -b 16 -m \
    microsoft/deberta-large \
    microsoft/deberta-large-mnli
```
The baseline files will be in `rescale_baseline` folder.
