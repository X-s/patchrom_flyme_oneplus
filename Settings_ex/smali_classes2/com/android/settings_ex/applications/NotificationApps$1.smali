.class final Lcom/android/settings_ex/applications/NotificationApps$1;
.super Ljava/lang/Object;
.source "NotificationApps.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/NotificationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/settings_ex/dashboard/SummaryLoader;)Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 75
    new-instance v0, Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;)V

    return-object v0
.end method
