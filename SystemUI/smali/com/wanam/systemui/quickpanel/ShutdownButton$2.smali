.class Lcom/wanam/systemui/quickpanel/ShutdownButton$2;
.super Ljava/lang/Object;
.source "ShutdownButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanam/systemui/quickpanel/ShutdownButton;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/ShutdownButton;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/ShutdownButton;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/ShutdownButton$2;->this$0:Lcom/wanam/systemui/quickpanel/ShutdownButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 56
    return-void
.end method
