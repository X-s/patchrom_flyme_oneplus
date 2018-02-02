.class public interface abstract Lcom/oneplus/camera/media/ResolutionSelector;
.super Ljava/lang/Object;
.source "ResolutionSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    }
.end annotation


# virtual methods
.method public abstract getResolutionSettingsKey(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;)Ljava/lang/String;
.end method

.method public abstract saveResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/Resolution;)V
.end method

.method public abstract selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;
.end method

.method public abstract selectResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Ljava/util/List;Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Lcom/oneplus/camera/media/Resolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/base/Settings;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;",
            "Lcom/oneplus/camera/media/Resolution;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Lcom/oneplus/camera/media/Resolution;"
        }
    .end annotation
.end method

.method public abstract selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/base/Settings;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation
.end method
