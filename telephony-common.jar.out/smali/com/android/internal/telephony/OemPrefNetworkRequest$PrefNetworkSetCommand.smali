.class Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;
.super Ljava/lang/Object;
.source "OemPrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OemPrefNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefNetworkSetCommand"
.end annotation


# instance fields
.field private final mPrefNetwork:I

.field private final mSlot:I

.field final synthetic this$0:Lcom/android/internal/telephony/OemPrefNetworkRequest;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/OemPrefNetworkRequest;II)V
    .locals 0
    .param p2, "slot"    # I
    .param p3, "prefNetwork"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->this$0:Lcom/android/internal/telephony/OemPrefNetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p2, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I

    .line 72
    iput p3, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/OemPrefNetworkRequest;IILcom/android/internal/telephony/OemPrefNetworkRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/OemPrefNetworkRequest;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/internal/telephony/OemPrefNetworkRequest$1;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/internal/telephony/OemPrefNetworkRequest;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I

    return v0
.end method
