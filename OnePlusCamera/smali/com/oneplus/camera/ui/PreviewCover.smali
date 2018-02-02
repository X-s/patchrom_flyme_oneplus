.class public interface abstract Lcom/oneplus/camera/ui/PreviewCover;
.super Ljava/lang/Object;
.source "PreviewCover.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;,
        Lcom/oneplus/camera/ui/PreviewCover$Style;,
        Lcom/oneplus/camera/ui/PreviewCover$UIState;
    }
.end annotation


# static fields
.field public static final FLAG_HIDE_PREVIEW_COVER_DIRECTLY:I = 0x1


# virtual methods
.method public abstract addOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V
.end method

.method public abstract getPreviewCoverState(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCover$UIState;
.end method

.method public abstract removeOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V
.end method

.method public abstract showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;
.end method
