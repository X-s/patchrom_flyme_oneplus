.class Lcom/android/settings_ex/users/UserSettings$5;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserSettings;->loadProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/UserSettings;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$5;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 351
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/UserSettings$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$5;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-get5(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 353
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v1, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    .line 360
    :cond_1
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 346
    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/UserSettings$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings$5;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v0, p1}, Lcom/android/settings_ex/users/UserSettings;->-wrap5(Lcom/android/settings_ex/users/UserSettings;Ljava/lang/String;)V

    .line 346
    return-void
.end method
