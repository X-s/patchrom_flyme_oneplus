.class Lcom/android/settings_ex/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;

.field final synthetic val$corrupt:Z

.field final synthetic val$mdtp_activated:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;ZZ)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    iput-boolean p2, p0, Lcom/android/settings_ex/CryptKeeper$5;->val$mdtp_activated:Z

    iput-boolean p3, p0, Lcom/android/settings_ex/CryptKeeper$5;->val$corrupt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 624
    iget-boolean v3, p0, Lcom/android/settings_ex/CryptKeeper$5;->val$mdtp_activated:Z

    if-eqz v3, :cond_0

    .line 625
    const-string v3, "CryptKeeper"

    const-string v4, "  Calling encryptStorage with wipe"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$300(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 628
    .local v2, "service":Landroid/os/storage/IMountService;
    const/4 v3, 0x1

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v2    # "service":Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CryptKeeper"

    const-string v4, "Unable to call MountService properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 638
    const-string v3, "android.intent.extra.REASON"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CryptKeeper.showFactoryReset() corrupt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/CryptKeeper$5;->val$corrupt:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
