.class public Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
.super Ljava/lang/Object;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeInfoWrapper"
.end annotation


# instance fields
.field public mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

.field public modeID:I

.field public modename:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorBalanceService;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;
    .param p2, "displayMode"    # Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2833
    iput-object p2, p0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 2834
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->modename:Ljava/lang/String;

    .line 2835
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->modeID:I

    .line 2832
    return-void
.end method


# virtual methods
.method public resetName()V
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->modename:Ljava/lang/String;

    .line 2843
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->modename:Ljava/lang/String;

    return-object v0
.end method
