.class Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$2;
.super Landroid/database/ContentObserver;
.source "PhysicalKeyboardFragment.java"


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
.method constructor <init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$2;->this$0:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$2;->this$0:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->-wrap1(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;)V

    .line 275
    return-void
.end method
