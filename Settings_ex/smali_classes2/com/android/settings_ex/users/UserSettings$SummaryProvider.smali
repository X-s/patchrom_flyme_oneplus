.class Lcom/android/settings_ex/users/UserSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1150
    iput-object p2, p0, Lcom/android/settings_ex/users/UserSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 1148
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 6
    .param p1, "listening"    # Z

    .prologue
    .line 1155
    if-eqz p1, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1157
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1156
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1158
    .local v0, "info":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1159
    iget-object v4, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1158
    const v4, 0x7f0e0fb6

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1154
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method
