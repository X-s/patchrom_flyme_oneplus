.class Lcom/android/settings_ex/RemoteBugreportActivity$5;
.super Ljava/lang/Object;
.source "RemoteBugreportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RemoteBugreportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RemoteBugreportActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RemoteBugreportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/RemoteBugreportActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/RemoteBugreportActivity$5;->this$0:Lcom/android/settings_ex/RemoteBugreportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "com.android.server.action.BUGREPORT_SHARING_ACCEPTED"

    .line 97
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/RemoteBugreportActivity$5;->this$0:Lcom/android/settings_ex/RemoteBugreportActivity;

    .line 100
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.DUMP"

    .line 99
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings_ex/RemoteBugreportActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/RemoteBugreportActivity$5;->this$0:Lcom/android/settings_ex/RemoteBugreportActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/RemoteBugreportActivity;->finish()V

    .line 96
    return-void
.end method
