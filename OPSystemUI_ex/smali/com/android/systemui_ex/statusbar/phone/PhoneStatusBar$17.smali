.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$17;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clearAllNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1318
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    :goto_0
    return-void

    .line 1319
    :catch_0
    move-exception v0

    goto :goto_0
.end method
