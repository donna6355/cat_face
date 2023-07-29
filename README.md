# cat_face

Application for reading cat's face and guess its mood by using tensorflowlite model.

### Directories

```
- core
    - localization
- data
- logic
- presentation
    - components
    - screens
```

### Flutter version : stable 3.10.1

### Build

```
flutter build appbundle --dart-define-from-file=config.json
```

### config.json

'''
{
"ios_ad": "${YOUR_UNIT_ID_FOR_IOS_NATIVE_ADS}",
"ios_full_ad": "YOUR_UNIT_ID_FOR_IOS_INTERSTITAL_ADS",
"and_ad": "YOUR_UNIT_ID_FOR_AOS_NATIVE_ADS",
"and_full_ad": "YOUR_UNIT_ID_FOR_AOS_INTERSTITAL_ADS"
}
'''
