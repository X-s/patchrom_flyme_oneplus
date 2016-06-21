.class Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChronomterState"
.end annotation


# instance fields
.field public mBaseTime:J

.field public mStopTime:J

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/NotificationData;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/NotificationData;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;->this$0:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/NotificationData;Lcom/android/systemui_ex/statusbar/NotificationData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/NotificationData;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/NotificationData$1;

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;-><init>(Lcom/android/systemui_ex/statusbar/NotificationData;)V

    return-void
.end method
