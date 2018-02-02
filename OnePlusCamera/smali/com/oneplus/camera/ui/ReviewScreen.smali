.class public interface abstract Lcom/oneplus/camera/ui/ReviewScreen;
.super Ljava/lang/Object;
.source "ReviewScreen.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final FLAG_WAIT_FOR_CAMERA_PREVIEW:I = 0x1

.field public static final PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CANCEL:I = 0x0

.field public static final RESULT_OK:I = 0x1

.field public static final RESULT_RETAKE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/ReviewScreen;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreen;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 7
    return-void
.end method


# virtual methods
.method public abstract showReviewScreen()Lcom/oneplus/base/Handle;
.end method
