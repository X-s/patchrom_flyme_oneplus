.class Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$5;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;
    .param p2, "val$identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$5;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$5;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-static {v0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->-wrap2(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 626
    const/4 v0, 0x1

    return v0
.end method
