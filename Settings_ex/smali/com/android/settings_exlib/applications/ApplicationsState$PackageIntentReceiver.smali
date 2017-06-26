.class Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/applications/ApplicationsState;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_exlib/applications/ApplicationsState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p2, "x1"    # Lcom/android/settings_exlib/applications/ApplicationsState$1;

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, -0x2710

    .line 1013
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "actionStr":Ljava/lang/String;
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1015
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1016
    .local v3, "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 1017
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 1018
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v10, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lcom/android/settings_exlib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 1017
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1020
    .end local v3    # "data":Landroid/net/Uri;
    .end local v4    # "i":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_0
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1021
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1022
    .restart local v3    # "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 1023
    .restart local v8    # "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 1024
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v10, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lcom/android/settings_exlib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 1023
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1026
    .end local v3    # "data":Landroid/net/Uri;
    .end local v4    # "i":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1027
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1028
    .restart local v3    # "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 1029
    .restart local v8    # "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 1030
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v10, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lcom/android/settings_exlib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 1029
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1032
    .end local v3    # "data":Landroid/net/Uri;
    .end local v4    # "i":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_2
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1040
    :cond_3
    const-string v9, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1041
    .local v7, "pkgList":[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v9, v7

    if-nez v9, :cond_5

    .line 1058
    .end local v7    # "pkgList":[Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 1045
    .restart local v7    # "pkgList":[Ljava/lang/String;
    :cond_5
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1046
    .local v2, "avail":Z
    if-eqz v2, :cond_4

    .line 1047
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4
    if-ge v5, v6, :cond_4

    aget-object v8, v1, v5

    .line 1048
    .restart local v8    # "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 1049
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v10, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lcom/android/settings_exlib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 1048
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1047
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1053
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "avail":Z
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "pkgList":[Ljava/lang/String;
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_7
    const-string v9, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1054
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->addUser(I)V
    invoke-static {v9, v10}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$500(Lcom/android/settings_exlib/applications/ApplicationsState;I)V

    goto :goto_3

    .line 1055
    :cond_8
    const-string v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1056
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->removeUser(I)V
    invoke-static {v9, v10}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$600(Lcom/android/settings_exlib/applications/ApplicationsState;I)V

    goto :goto_3
.end method

.method registerReceiver()V
    .locals 4

    .prologue
    .line 992
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 996
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 998
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 999
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1003
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1004
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1007
    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1010
    return-void
.end method
