.class Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartKeyguardExitAnimParams"
.end annotation


# instance fields
.field fadeoutDuration:J

.field startTime:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 1597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1598
    iput-wide p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    .line 1599
    iput-wide p3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    .line 1600
    return-void
.end method

.method synthetic constructor <init>(JJLcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;

    .prologue
    .line 1592
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJ)V

    return-void
.end method
