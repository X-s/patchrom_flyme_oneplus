.class Lcom/android/settings_ex/DisplaySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1756
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1757
    iput-object p2, p0, Lcom/android/settings_ex/DisplaySettings$SummaryProvider;->mLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 1755
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;Lcom/android/settings_ex/DisplaySettings$SummaryProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DisplaySettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1768
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1769
    const-string/jumbo v2, "screen_brightness_mode"

    .line 1768
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 1771
    .local v0, "auto":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$SummaryProvider;->mLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const v1, 0x7f0e0fe1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1767
    return-void

    .line 1768
    .end local v0    # "auto":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "auto":Z
    goto :goto_0

    .line 1772
    :cond_1
    const v1, 0x7f0e0fe2

    goto :goto_1
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 1762
    if-eqz p1, :cond_0

    .line 1763
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings$SummaryProvider;->updateSummary()V

    .line 1761
    :cond_0
    return-void
.end method
