.class public interface abstract Lcom/oneplus/camera/ZoomBar;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_ZOOM_VALUE_CLICK:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_ZOOM_VALUE_DRAGED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_ZOOM_VALUE_LONG_CLICK:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_ZOOM_VALUE_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_ZOOM_WHEEL_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsZoomValueVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ZoomBar;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ZoomBar;->PROP_IS_ZOOM_VALUE_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 21
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsZoomWheelVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ZoomBar;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ZoomBar;->PROP_IS_ZOOM_WHEEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 25
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "ZoomValueClick"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/ZoomBar;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/ZoomBar;->EVENT_ZOOM_VALUE_CLICK:Lcom/oneplus/base/EventKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "IsZoomValueDraged"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/ZoomBar;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/ZoomBar;->EVENT_ZOOM_VALUE_DRAGED:Lcom/oneplus/base/EventKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "ZoomValueLongClick"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/ZoomBar;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/ZoomBar;->EVENT_ZOOM_VALUE_LONG_CLICK:Lcom/oneplus/base/EventKey;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract setZoomBarVisibility(ZI)Lcom/oneplus/base/Handle;
.end method
