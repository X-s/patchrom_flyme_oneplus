.class public Lcom/android/settings_ex/applications/NotificationApps;
.super Lcom/android/settings_ex/applications/ManageApplications;
.source "NotificationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/NotificationApps$1;,
        Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/settings_ex/applications/NotificationApps$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/NotificationApps$1;-><init>()V

    .line 70
    sput-object v0, Lcom/android/settings_ex/applications/NotificationApps;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;-><init>()V

    return-void
.end method
