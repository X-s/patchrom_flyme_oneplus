.class Lcom/android/settings_ex/users/UserSettings$10;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/UserSettings;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$10;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$10;->this$0:Lcom/android/settings_ex/users/UserSettings;

    if-nez p2, :cond_0

    .line 591
    const/4 v0, 0x1

    .line 590
    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ex/users/UserSettings;->-wrap7(Lcom/android/settings_ex/users/UserSettings;I)V

    .line 589
    return-void

    .line 592
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
