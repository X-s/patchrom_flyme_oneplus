.class Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "OPStatusBarCustomizeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPStatusBarCustomizeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusBarCustomizeIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    .line 133
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;->mIsPrimary:Z

    .line 131
    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    iget-boolean v2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;->mIsPrimary:Z

    if-nez v2, :cond_0

    .line 142
    return-object v0

    .line 145
    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f08005d

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v0
.end method
