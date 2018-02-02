.class public interface abstract Lcom/oneplus/base/component/Component;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# static fields
.field public static final PROP_OWNER:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/component/ComponentOwner;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/component/ComponentState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 15
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Owner"

    const-class v2, Lcom/oneplus/base/component/ComponentOwner;

    const-class v3, Lcom/oneplus/base/component/Component;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/component/Component;->PROP_OWNER:Lcom/oneplus/base/PropertyKey;

    .line 19
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "State"

    const-class v2, Lcom/oneplus/base/component/ComponentState;

    const-class v3, Lcom/oneplus/base/component/Component;

    sget-object v4, Lcom/oneplus/base/component/ComponentState;->NEW:Lcom/oneplus/base/component/ComponentState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/component/Component;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract initialize()Z
.end method
