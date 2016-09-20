.class public interface abstract Lcom/oneplus/camera/ui/CaptureButtons;
.super Ljava/lang/Object;
.source "CaptureButtons.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;,
        Lcom/oneplus/camera/ui/CaptureButtons$Button;
    }
.end annotation


# static fields
.field public static final EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/ui/CaptureButtonEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/ui/CaptureButtonEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_NO_ANIMATION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "ButtonPressed"

    const-class v2, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    const-class v3, Lcom/oneplus/camera/ui/CaptureButtons;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureButtons;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    .line 27
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "ButtonReleased"

    const-class v2, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    const-class v3, Lcom/oneplus/camera/ui/CaptureButtons;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureButtons;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract setButtonIcon(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract setButtonStyle(Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract setButtonVisibility(Lcom/oneplus/camera/ui/CaptureButtons$Button;ZI)Lcom/oneplus/base/Handle;
.end method
