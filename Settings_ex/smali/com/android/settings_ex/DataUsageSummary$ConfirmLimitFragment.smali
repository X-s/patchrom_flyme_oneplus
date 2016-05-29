.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field private static final EXTRA_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1897
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 13
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1939
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$3000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v10

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$2900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v8

    .line 1905
    .local v8, "policy":Landroid/net/NetworkPolicy;
    if-eqz v8, :cond_0

    .line 1907
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1909
    .local v9, "res":Landroid/content/res/Resources;
    iget-wide v10, v8, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v10, v10

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v11

    float-to-long v6, v10

    .line 1913
    .local v6, "minLimitBytes":J
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1914
    .local v1, "currentTab":Ljava/lang/String;
    const-string v10, "3g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1915
    const v10, 0x7f090969

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1916
    .local v3, "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1931
    .local v4, "limitBytes":J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1932
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "message"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1933
    const-string v10, "limitBytes"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1935
    new-instance v2, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 1936
    .local v2, "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1937
    const/4 v10, 0x0

    invoke-virtual {v2, p0, v10}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1938
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "confirmLimit"

    invoke-virtual {v2, v10, v11}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1917
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_2
    const-string v10, "4g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1918
    const v10, 0x7f090969

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1919
    .restart local v3    # "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_1

    .line 1920
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_3
    const-string v10, "mobile"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1921
    const v10, 0x7f090969

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1922
    .restart local v3    # "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_1

    .line 1923
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_4
    const-string v10, "SIM"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1924
    const v10, 0x7f090969

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1925
    .restart local v3    # "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_1

    .line 1928
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown current tab: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1945
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1946
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1948
    .local v2, "limitBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1949
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090968

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1950
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1952
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1962
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
