.class public Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1950
    const v0, 0x7f040045

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1944
    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1945
    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1951
    const v0, 0x7f040046

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    .line 1952
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    .line 1953
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 1967
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1970
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I
    .locals 4
    .param p1, "target"    # Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .prologue
    .line 1977
    if-eqz p1, :cond_2

    .line 1978
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    .line 1979
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1980
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 1981
    .local v2, "item":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1979
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1983
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;->compareTo(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1988
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .param p1, "possible"    # Z

    .prologue
    .line 1956
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1957
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1958
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1961
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1962
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1963
    return-void
.end method
