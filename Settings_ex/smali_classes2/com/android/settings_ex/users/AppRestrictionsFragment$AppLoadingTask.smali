.class Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 320
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->-get1(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->fetchAndMergeApps()V

    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 326
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->-wrap3(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    .line 326
    return-void
.end method
