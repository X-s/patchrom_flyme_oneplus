.class public Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
.super Ljava/lang/Object;
.source "TrustAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustAgentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrustAgentComponentInfo"
.end annotation


# instance fields
.field admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field componentName:Landroid/content/ComponentName;

.field summary:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 58
    return-void
.end method
