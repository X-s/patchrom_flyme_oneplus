.class Lcom/android/server/display/ColorBalanceService$5;
.super Ljava/lang/Object;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorBalanceService;->colorManagerInit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$5;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$5;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-wrap17(Lcom/android/server/display/ColorBalanceService;)V

    .line 1576
    return-void
.end method
