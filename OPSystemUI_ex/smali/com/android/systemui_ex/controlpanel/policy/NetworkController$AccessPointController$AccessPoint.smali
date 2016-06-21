.class public Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessPoint"
.end annotation


# instance fields
.field public hasSecurity:Z

.field public iconId:I

.field public isConfigured:Z

.field public isConnected:Z

.field public level:I

.field public networkId:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
