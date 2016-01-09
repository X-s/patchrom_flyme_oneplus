.class Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageSetupDataObj"
.end annotation


# instance fields
.field public apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

.field public msg:Landroid/os/Message;

.field public radioTech:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/ApnContext;I)V
    .locals 0
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p3, "radioTech"    # I

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;->apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1674
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;->radioTech:I

    .line 1675
    return-void
.end method
