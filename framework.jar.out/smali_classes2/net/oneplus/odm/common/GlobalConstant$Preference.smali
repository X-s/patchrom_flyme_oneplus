.class public Lnet/oneplus/odm/common/GlobalConstant$Preference;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/common/GlobalConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Preference"
.end annotation


# static fields
.field public static final OP_DB_PAYLOAD_ID_COUNT:Ljava/lang/String; = "OP_db_payload_id_count"


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/common/GlobalConstant;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/common/GlobalConstant;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lnet/oneplus/odm/common/GlobalConstant$Preference;->this$0:Lnet/oneplus/odm/common/GlobalConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
