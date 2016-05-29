.class final Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v14, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    const v31, 0x7f090682

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 781
    .local v24, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 782
    # invokes: Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 783
    .local v23, "localeName":Ljava/lang/String;
    new-instance v13, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 784
    .local v13, "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v31, "phone_language"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 785
    const v31, 0x7f090685

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 786
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 787
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 788
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 789
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .end local v23    # "localeName":Ljava/lang/String;
    :cond_0
    new-instance v13, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 794
    .restart local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v31, "spellcheckers_settings"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 795
    const v31, 0x7f0909a7

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 796
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 797
    const v31, 0x7f090a8d

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 798
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v31

    if-eqz v31, :cond_1

    .line 802
    new-instance v13, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 803
    .restart local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v31, "user_dict_settings"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 804
    const v31, 0x7f09069e

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 805
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 806
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_1
    new-instance v13, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 811
    .restart local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v31, "keyboard_settings"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 812
    const v31, 0x7f090684

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 813
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 814
    const v31, 0x7f090a9a

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 815
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v12

    .line 819
    .local v12, "immValues":Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v12}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 822
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, "currImeName":Ljava/lang/String;
    new-instance v13, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 824
    .restart local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v31, "current_input_method"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 825
    const v31, 0x7f0906c2

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 826
    iput-object v6, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 827
    iput-object v6, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 828
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 829
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    const-string v31, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 835
    .local v18, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v12}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v19

    .line 836
    .local v19, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v19, :cond_3

    const/16 v17, 0x0

    .line 837
    .local v17, "inputMethodCount":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 838
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    .line 840
    .local v16, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v31, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v29

    .line 843
    .local v29, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v27

    .line 844
    .local v27, "subtypeCount":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 845
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/inputmethod/InputMethodSubtype;

    .line 846
    .local v26, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v31

    if-lez v31, :cond_2

    .line 847
    const/16 v31, 0x2c

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 849
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v28

    .line 852
    .local v28, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 844
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 836
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v17    # "inputMethodCount":I
    .end local v20    # "j":I
    .end local v26    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v27    # "subtypeCount":I
    .end local v28    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    goto :goto_0

    .line 854
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v17    # "inputMethodCount":I
    .restart local v20    # "j":I
    .restart local v27    # "subtypeCount":I
    .restart local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 856
    .local v30, "summary":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    .line 857
    .local v25, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v13, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 861
    .restart local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 863
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 864
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 865
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 866
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 870
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v20    # "j":I
    .end local v25    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v27    # "subtypeCount":I
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v30    # "summary":Ljava/lang/String;
    :cond_5
    const-string v31, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/input/InputManager;

    .line 872
    .local v15, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v9, 0x0

    .line 874
    .local v9, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v8

    .line 875
    .local v8, "devices":[I
    const/4 v10, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v10, v0, :cond_a

    .line 876
    aget v31, v8, v10

    invoke-static/range {v31 .. v31}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 877
    .local v7, "device":Landroid/view/InputDevice;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v31

    if-nez v31, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v31

    if-nez v31, :cond_7

    .line 875
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 881
    :cond_7
    const/4 v9, 0x1

    .line 883
    invoke-virtual {v7}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 884
    .local v11, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v15, v11}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v22

    .line 886
    .local v22, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v22, :cond_8

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v21

    .line 890
    .local v21, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_5
    if-eqz v21, :cond_9

    .line 891
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v30

    .line 896
    .restart local v30    # "summary":Ljava/lang/String;
    :goto_6
    new-instance v13, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 897
    .restart local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 898
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 899
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 900
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 901
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 902
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 886
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    goto :goto_5

    .line 893
    .restart local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_9
    const v31, 0x7f09069c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "summary":Ljava/lang/String;
    goto :goto_6

    .line 905
    .end local v7    # "device":Landroid/view/InputDevice;
    .end local v11    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v22    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    .line 907
    new-instance v13, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 908
    .restart local v13    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v31, "builtin_keyboard_settings"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 909
    const v31, 0x7f0906cf

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 911
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 912
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_b
    return-object v14
.end method
