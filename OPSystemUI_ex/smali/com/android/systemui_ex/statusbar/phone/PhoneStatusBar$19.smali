.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startGlyphRasterizeHack()V
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
    .line 1375
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1378
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDrawCount:I
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1380
    const-string v0, "extraRasterBucket"

    const v1, 0x3f733333    # 0.95f

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/HardwareCanvas;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v0, "extraRasterBucket"

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/HardwareCanvas;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # operator++ for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDrawCount:I
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4208(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I

    .line 1389
    return v4
.end method
