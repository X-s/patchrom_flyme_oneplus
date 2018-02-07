.class Lcom/android/settings_ex/users/AppRestrictionsFragment$3;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/AppRestrictionsFragment;->onPause()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 282
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->-get1(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method
