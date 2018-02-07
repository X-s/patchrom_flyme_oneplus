.class public final Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "VirtualKeyboardFragment.java"


# static fields
.field private static final ADD_VIRTUAL_KEYBOARD_SCREEN:Ljava/lang/String; = "add_virtual_keyboard_screen"

.field private static final NO_ICON:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 75
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v12

    .line 77
    .local v12, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v11

    .line 79
    .local v11, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v11, :cond_0

    const/4 v6, 0x0

    .line 80
    .local v6, "N":I
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 81
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 82
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v12, :cond_1

    .line 83
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 87
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 92
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 95
    const/4 v3, 0x0

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 98
    .local v0, "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    invoke-virtual {v0, v10}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "N":I
    .end local v9    # "i":I
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "N":I
    goto :goto_0

    .line 82
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v9    # "i":I
    :cond_1
    const/4 v4, 0x1

    .local v4, "isAllowedByOrganization":Z
    goto :goto_2

    .line 88
    .end local v4    # "isAllowedByOrganization":Z
    :catch_0
    move-exception v8

    .line 90
    .local v8, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 101
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    .line 102
    .local v7, "collator":Ljava/text/Collator;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment$1;

    invoke-direct {v5, p0, v7}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment$1;-><init>(Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;Ljava/text/Collator;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 109
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_3

    .line 110
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 111
    .restart local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    invoke-virtual {v0, v9}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setOrder(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 113
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    .line 114
    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 109
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 116
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

    const v5, 0x7f0200d6

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 117
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x159

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 53
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->addPreferencesFromResource(I)V

    .line 54
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 55
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 57
    const-string/jumbo v1, "add_virtual_keyboard_screen"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

    .line 51
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    .line 61
    return-void
.end method
