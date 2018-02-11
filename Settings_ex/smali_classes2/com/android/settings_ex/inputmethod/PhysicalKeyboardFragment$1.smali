.class Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$1;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    .line 269
    const/4 v0, 0x1

    return v0
.end method
