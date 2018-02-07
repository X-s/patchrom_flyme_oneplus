.class public final Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;,
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$1;,
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$2;,
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;,
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;,
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;,
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;,
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;
    }
.end annotation


# static fields
.field private static final IM_SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final KEYBOARD_ASSISTANCE_CATEGORY:Ljava/lang/String; = "keyboard_assistance_category"

.field private static final KEYBOARD_SHORTCUTS_HELPER:Ljava/lang/String; = "keyboard_shortcuts_helper"

.field private static final SHOW_VIRTUAL_KEYBOARD_SWITCH:Ljava/lang/String; = "show_virtual_keyboard_switch"


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mLastHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextLoaderId:I

.field private mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private final mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private final mTempKeyboardInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->toggleKeyboardShortcutsMenu()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    .line 265
    new-instance v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$1;-><init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)V

    .line 264
    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 273
    new-instance v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$2;

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$2;-><init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 61
    return-void
.end method

.method private clearLoader()V
    .locals 3

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "loaderId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 237
    .local v0, "loaderId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 239
    .end local v0    # "loaderId":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 235
    return-void
.end method

.method private static getHardKeyboards()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v3, "keyboards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 200
    .local v2, "devicesIds":[I
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget v1, v2, v4

    .line 201
    .local v1, "deviceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 202
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    new-instance v6, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "deviceId":I
    :cond_2
    return-object v3
.end method

.method private registerShowVirtualKeyboardSettingsObserver()V
    .locals 5

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 245
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 248
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 246
    const/4 v4, 0x0

    .line 244
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 249
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    .line 242
    return-void
.end method

.method private showKeyboardLayoutScreen(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v1, "input_method_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v1, "input_method_subtype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method private toggleKeyboardShortcutsMenu()V
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->requestShowKeyboardShortcuts()V

    .line 260
    return-void
.end method

.method private unregisterShowVirtualKeyboardSettingsObserver()V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    return-void
.end method

.method private updateHardKeyboards()V
    .locals 6

    .prologue
    .line 210
    invoke-static {}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards()Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    .local v0, "newHardKeyboards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    iget v2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    .line 217
    new-instance v3, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-direct {v3, v4, p0, v5}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;-><init>(Landroid/content/Context;Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V

    .line 216
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 218
    iget v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    .line 209
    :cond_0
    return-void
.end method

.method private updateShowVirtualKeyboardSwitch()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 256
    return-void
.end method


# virtual methods
.method synthetic -com_android_settings_inputmethod_PhysicalKeyboardFragment_lambda$1(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "keyboards"    # Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 159
    iget-object v0, p1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v0, v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 158
    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->showKeyboardLayoutScreen(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x15a

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 89
    .local v7, "activity":Landroid/app/Activity;
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->addPreferencesFromResource(I)V

    .line 90
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v7, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 91
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 92
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 94
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 97
    const/4 v6, 0x0

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 99
    const-string/jumbo v0, "keyboard_assistance_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 98
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 102
    const-string/jumbo v1, "show_virtual_keyboard_switch"

    .line 101
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 100
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 103
    const-string/jumbo v0, "keyboard_shortcuts_helper"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$3;-><init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    .line 177
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    .line 187
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    .line 182
    return-void
.end method

.method public onLoadFinishedInternal(ILjava/util/List;)V
    .locals 13
    .param p1, "loaderId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "keyboardsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;>;"
    const/4 v12, 0x0

    .line 137
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    .line 144
    .local v9, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 145
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "keyboards$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;

    .line 146
    .local v5, "keyboards":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10, v12}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v10, v5, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v10, v10, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    .line 149
    invoke-virtual {v9, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 150
    iget-object v10, v5, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    .line 151
    .local v3, "info":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 152
    iget-object v2, v3, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 153
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, v3, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 154
    .local v1, "imSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_3

    .line 156
    new-instance v7, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10, v3, v12}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;)V

    .line 157
    .local v7, "pref":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;
    new-instance v10, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;

    invoke-direct {v10, p0, v5, v2, v1}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;-><init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 165
    .end local v7    # "pref":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    .line 166
    .restart local v7    # "pref":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;
    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 170
    .end local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    .end local v1    # "imSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "info":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v5    # "keyboards":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;
    .end local v7    # "pref":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;
    .end local v8    # "pref$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 171
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    .line 172
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 173
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    .line 136
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 128
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 116
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 120
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->registerShowVirtualKeyboardSettingsObserver()V

    .line 114
    return-void
.end method
