.class public interface abstract Lcom/oneplus/camera/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/DialogManager$DialogParams;
    }
.end annotation


# static fields
.field public static final FLAG_CUSTOM_KEY_LISTENER:I = 0x1

.field public static final PROP_DEFAULT_DIALOG_THEME:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;
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
    .line 25
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DefaultDialogTheme"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/DialogManager;

    const v4, 0x103023a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/DialogManager;->PROP_DEFAULT_DIALOG_THEME:Lcom/oneplus/base/PropertyKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HasDialog"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/DialogManager;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/DialogManager;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)Lcom/oneplus/base/Handle;
.end method
