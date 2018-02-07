.class final synthetic Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$imSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private synthetic val$imi:Landroid/view/inputmethod/InputMethodInfo;

.field private synthetic val$keyboards:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;

.field private synthetic val$this:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;->val$this:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;->val$keyboards:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;

    iput-object p3, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;->val$imi:Landroid/view/inputmethod/InputMethodInfo;

    iput-object p4, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;->val$imSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;->val$this:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;->val$keyboards:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;->val$imi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;->val$imSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->-com_android_settings_inputmethod_PhysicalKeyboardFragment_lambda$1(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
