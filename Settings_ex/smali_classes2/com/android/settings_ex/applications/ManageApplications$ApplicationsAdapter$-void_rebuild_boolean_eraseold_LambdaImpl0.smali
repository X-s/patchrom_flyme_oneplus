.class final synthetic Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_rebuild_boolean_eraseold_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$comparatorObj:Ljava/util/Comparator;

.field private synthetic val$finalFilterObj:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private synthetic val$this:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;->val$this:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;->val$finalFilterObj:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    iput-object p3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;->val$comparatorObj:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;->val$this:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;->val$finalFilterObj:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;->val$comparatorObj:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    return-void
.end method
