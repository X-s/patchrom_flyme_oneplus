.class Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;->this$1:Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 288
    return-void
.end method
