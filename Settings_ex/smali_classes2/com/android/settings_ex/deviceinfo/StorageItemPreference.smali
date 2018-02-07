.class public Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageItemPreference.java"


# static fields
.field private static final PROGRESS_MAX:I = 0x64


# instance fields
.field private progress:I

.field private progressBar:Landroid/widget/ProgressBar;

.field public userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progress:I

    .line 37
    const v0, 0x7f0401a6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 68
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 67
    return-void
.end method

.method public setStorageSize(JJ)V
    .locals 5
    .param p1, "size"    # J
    .param p3, "total"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 41
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    cmp-long v0, p3, v2

    if-nez v0, :cond_1

    .line 45
    iput v1, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progress:I

    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 40
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progress:I

    goto :goto_1
.end method

.method protected updateProgressBar()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 58
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 52
    return-void
.end method
