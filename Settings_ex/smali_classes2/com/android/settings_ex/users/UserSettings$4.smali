.class final Lcom/android/settings_ex/users/UserSettings$4;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0e0d48

    const v5, 0x7f0e0d0f

    .line 1178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-static {p1}, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    move-result-object v3

    .line 1180
    .local v3, "userCaps":Lcom/android/settings_ex/users/UserSettings$UserCapabilities;
    iget-boolean v4, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v4, :cond_0

    .line 1181
    return-object v2

    .line 1183
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1184
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1185
    .local v0, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1186
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1187
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-boolean v4, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v4, :cond_2

    .line 1190
    :cond_1
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1191
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iget-boolean v4, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_4

    .line 1192
    const v4, 0x7f0e0d11

    .line 1191
    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1194
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1195
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/users/UserSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1198
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1199
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1200
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1201
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_3
    return-object v2

    .line 1193
    :cond_4
    const v4, 0x7f0e0d12

    goto :goto_0
.end method
