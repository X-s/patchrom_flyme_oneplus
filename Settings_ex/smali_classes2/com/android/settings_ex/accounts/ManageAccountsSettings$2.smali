.class Lcom/android/settings_ex/accounts/ManageAccountsSettings$2;
.super Ljava/lang/Thread;
.source "ManageAccountsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/ManageAccountsSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-static {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->-wrap1(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V

    .line 118
    return-void
.end method
