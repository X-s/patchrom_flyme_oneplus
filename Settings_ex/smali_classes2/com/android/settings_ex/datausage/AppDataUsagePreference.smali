.class public Lcom/android/settings_ex/datausage/AppDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/AppDataUsagePreference$UidDetailTask;
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/settings_exlib/AppItem;

.field private final mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/AppItem;ILcom/android/settings_exlib/net/UidDetailProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/settings_exlib/AppItem;
    .param p3, "percent"    # I
    .param p4, "provider"    # Lcom/android/settings_exlib/net/UidDetailProvider;
    .param p5, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->mItem:Lcom/android/settings_exlib/AppItem;

    .line 42
    iput p3, p0, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->mPercent:I

    .line 43
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->setLayoutResource(I)V

    .line 44
    const v0, 0x7f04020e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->setWidgetLayoutResource(I)V

    .line 45
    iget-boolean v0, p2, Lcom/android/settings_exlib/AppItem;->restricted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/settings_exlib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 46
    const v0, 0x7f0e0cbd

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->setSummary(I)V

    .line 53
    :goto_0
    invoke-static {p4, p2, p0, p5}, Lcom/android/settings_ex/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settings_exlib/net/UidDetailProvider;Lcom/android/settings_exlib/AppItem;Lcom/android/settings_ex/datausage/AppDataUsagePreference;Ljava/util/concurrent/ExecutorService;)V

    .line 39
    return-void

    .line 48
    :cond_0
    iget-wide v0, p2, Lcom/android/settings_exlib/AppItem;->total:J

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getItem()Lcom/android/settings_exlib/AppItem;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->mItem:Lcom/android/settings_exlib/AppItem;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 62
    const v1, 0x102000d

    .line 61
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 64
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->mItem:Lcom/android/settings_exlib/AppItem;

    iget-boolean v1, v1, Lcom/android/settings_exlib/AppItem;->restricted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->mItem:Lcom/android/settings_exlib/AppItem;

    iget-wide v2, v1, Lcom/android/settings_exlib/AppItem;->total:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 65
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
