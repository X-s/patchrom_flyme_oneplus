.class Lcom/android/settings_ex/DeviceInfoSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceInfoSettings;
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
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p1, p0, Lcom/android/settings_ex/DeviceInfoSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 585
    iput-object p2, p0, Lcom/android/settings_ex/DeviceInfoSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 583
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 590
    if-eqz p1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings_ex/DeviceInfoSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 592
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 591
    const v3, 0x7f0e0fbb

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 589
    :cond_0
    return-void
.end method
