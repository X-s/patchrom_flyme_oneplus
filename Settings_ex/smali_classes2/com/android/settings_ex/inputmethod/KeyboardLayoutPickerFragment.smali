.class public Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "KeyboardLayoutPickerFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"


# instance fields
.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/support/v7/preference/CheckBoxPreference;",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 8

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 138
    .local v3, "root":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 141
    .local v1, "layout":Landroid/hardware/input/KeyboardLayout;
    new-instance v2, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 142
    .local v2, "pref":Landroid/support/v7/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 145
    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v2    # "pref":Landroid/support/v7/preference/CheckBoxPreference;
    :cond_0
    return-object v3
.end method

.method private updateCheckedState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 152
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 151
    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "enabledKeyboardLayouts":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 155
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/support/v7/preference/CheckBoxPreference;Landroid/hardware/input/KeyboardLayout;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/CheckBoxPreference;

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    .line 150
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/support/v7/preference/CheckBoxPreference;Landroid/hardware/input/KeyboardLayout;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x3a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "input_device_identifier"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    :cond_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->updateCheckedState()V

    .line 123
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 131
    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 130
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    .line 95
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 91
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 100
    instance-of v3, p1, Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 101
    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    .line 102
    .local v0, "checkboxPref":Landroid/support/v7/preference/CheckBoxPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    .line 103
    .local v2, "layout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 105
    .local v1, "checked":Z
    if-eqz v1, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 107
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v3, v4, v5}, Landroid/hardware/input/InputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 112
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 110
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v3, v4, v5}, Landroid/hardware/input/InputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v0    # "checkboxPref":Landroid/support/v7/preference/CheckBoxPreference;
    .end local v1    # "checked":Z
    .end local v2    # "layout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    .line 81
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 83
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;->updateCheckedState()V

    .line 74
    return-void
.end method
