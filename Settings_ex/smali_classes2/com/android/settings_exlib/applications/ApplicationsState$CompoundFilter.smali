.class public Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundFilter"
.end annotation


# instance fields
.field private final mFirstFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private final mSecondFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V
    .locals 0
    .param p1, "first"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .param p2, "second"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .prologue
    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1464
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1465
    iput-object p2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1463
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->init()V

    .line 1477
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->init()V

    .line 1475
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    .line 1471
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    .line 1469
    return-void
.end method
