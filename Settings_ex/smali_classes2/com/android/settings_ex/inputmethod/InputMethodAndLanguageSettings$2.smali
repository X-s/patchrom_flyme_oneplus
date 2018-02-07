.class final Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$2;
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
    .line 765
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 27
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
    .line 768
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v11, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    const v25, 0x7f0e0a61

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 773
    .local v20, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 774
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->-wrap1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 775
    .local v19, "localeNames":Ljava/lang/String;
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 776
    .local v10, "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "phone_language"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 777
    const v25, 0x7f0e0a63

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 778
    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 779
    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 780
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 781
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .end local v19    # "localeNames":Ljava/lang/String;
    :cond_0
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 786
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "spellcheckers_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 787
    const v25, 0x7f0e0d02

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 788
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 789
    const v25, 0x7f0e0df0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 790
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 794
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 795
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "user_dict_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 796
    const v25, 0x7f0e0a88

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 797
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 798
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_1
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 803
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "keyboard_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 804
    const v25, 0x7f0e0a62

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 805
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 806
    const v25, 0x7f0e0dfe

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 807
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v9

    .line 811
    .local v9, "immValues":Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v9}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 814
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, "currImeName":Ljava/lang/String;
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 816
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "current_input_method"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 817
    const v25, 0x7f0e0aa0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 818
    iput-object v3, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 819
    iput-object v3, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 820
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 821
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    const-string/jumbo v25, "input_method"

    .line 823
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    .line 827
    .local v15, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v16

    .line 828
    .local v16, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v16, :cond_2

    const/4 v14, 0x0

    .line 829
    .local v14, "inputMethodCount":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v14, :cond_3

    .line 830
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 832
    .local v13, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    const/16 v25, 0x1

    .line 831
    move/from16 v0, v25

    invoke-virtual {v15, v13, v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v22

    .line 833
    .local v22, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v23

    .line 836
    .local v23, "summary":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v21

    .line 837
    .local v21, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 838
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 837
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .local v2, "componentName":Landroid/content/ComponentName;
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 841
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 843
    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 844
    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 845
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 846
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 828
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "i":I
    .end local v13    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "inputMethodCount":I
    .end local v21    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v22    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v23    # "summary":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    .restart local v14    # "inputMethodCount":I
    goto :goto_0

    .line 851
    .restart local v7    # "i":I
    :cond_3
    const-string/jumbo v25, "input"

    .line 850
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/input/InputManager;

    .line 852
    .local v12, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v6, 0x0

    .line 854
    .local v6, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v5

    .line 855
    .local v5, "devices":[I
    const/4 v7, 0x0

    :goto_2
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v7, v0, :cond_7

    .line 856
    aget v25, v5, v7

    invoke-static/range {v25 .. v25}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 857
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v25

    if-nez v25, :cond_4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 861
    const/4 v6, 0x1

    .line 863
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    .line 865
    .local v8, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v12, v8}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v18

    .line 866
    .local v18, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 867
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v17

    .line 870
    .local v17, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_3
    if-eqz v17, :cond_6

    .line 871
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v23

    .line 876
    .restart local v23    # "summary":Ljava/lang/String;
    :goto_4
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 877
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 878
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 879
    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 880
    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 881
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 882
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v8    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v17    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v18    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v23    # "summary":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 867
    .restart local v8    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v18    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    .line 873
    .restart local v17    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_6
    const v25, 0x7f0e0a86

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "summary":Ljava/lang/String;
    goto :goto_4

    .line 885
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v8    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v17    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v18    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v23    # "summary":Ljava/lang/String;
    :cond_7
    if-eqz v6, :cond_8

    .line 887
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 888
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "builtin_keyboard_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 890
    const v25, 0x7f0e0aad

    .line 889
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 891
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 892
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_8
    new-instance v24, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 897
    .local v24, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v24 .. v24}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_9

    .line 898
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 899
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "tts_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 900
    const v25, 0x7f0e007c

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 901
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 902
    const v25, 0x7f0e0df2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 903
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_9
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 908
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "pointer_settings_category"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 909
    const v25, 0x7f0e0a7e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 910
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 911
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 914
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "pointer_speed"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 915
    const v25, 0x7f0e0a7f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 916
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 917
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-static {}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->-wrap0()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 921
    new-instance v10, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 922
    .restart local v10    # "indexable":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string/jumbo v25, "vibrate_input_devices"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 923
    const v25, 0x7f0e0a81

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 924
    const v25, 0x7f0e0a82

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 925
    const v25, 0x7f0e0a82

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 926
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 927
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_a
    return-object v11
.end method
