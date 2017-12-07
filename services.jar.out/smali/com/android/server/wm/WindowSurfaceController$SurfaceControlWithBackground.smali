.class Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field private mAppForcedInvisible:Z

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field public mLayer:I

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowSurfaceController;Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/AppWindowToken;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/server/wm/WindowSurfaceController;
    .param p2, "s"    # Landroid/view/SurfaceSession;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "format"    # I
    .param p7, "flags"    # I
    .param p8, "token"    # Lcom/android/server/wm/AppWindowToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->this$0:Lcom/android/server/wm/WindowSurfaceController;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 784
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 778
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    .line 785
    new-instance v0, Landroid/view/SurfaceControl;

    .line 786
    const/high16 v1, 0x20000

    or-int v6, p7, v1

    const/4 v5, -0x1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    .line 785
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 787
    and-int/lit16 v0, p7, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 788
    iput-object p8, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->addSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    .line 783
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .prologue
    .line 896
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 897
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 895
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 877
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 878
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 879
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    .line 876
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 859
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 860
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_0

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 862
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 858
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 884
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 883
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 795
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 796
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 794
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 829
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 828
    return-void
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    .prologue
    .line 801
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 803
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    if-eq v0, p1, :cond_0

    .line 804
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    .line 805
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 800
    :cond_0
    return-void
.end method

.method public setLayerStack(I)V
    .locals 1
    .param p1, "layerStack"    # I

    .prologue
    .line 835
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 836
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 834
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 853
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 852
    return-void
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    .prologue
    .line 841
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 842
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 843
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->updateBackgroundVisibility(Z)V

    .line 840
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 811
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 810
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    .prologue
    .line 848
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 847
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 817
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 818
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 816
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 890
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 891
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 889
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 823
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 822
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 868
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 869
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-nez v0, :cond_0

    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 871
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 867
    :cond_0
    return-void
.end method

.method updateBackgroundVisibility(Z)V
    .locals 1
    .param p1, "forcedInvisible"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    .line 902
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    if-eqz v0, :cond_1

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 900
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0
.end method
