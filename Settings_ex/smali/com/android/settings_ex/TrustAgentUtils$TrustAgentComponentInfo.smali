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
.field public componentName:Landroid/content/ComponentName;

.field public disabledByAdministrator:Z

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
