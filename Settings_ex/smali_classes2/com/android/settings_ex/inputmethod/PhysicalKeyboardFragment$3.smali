.class Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$3;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
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
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$3;->this$0:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$3;->this$0:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->-wrap0(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method
